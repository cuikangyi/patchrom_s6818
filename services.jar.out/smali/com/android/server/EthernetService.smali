.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/ethernet/IEthernetManager$Stub;"
    }
.end annotation


# static fields
.field private static final ETH_DEV0:Ljava/lang/String; = "eth0"

.field private static final ETH_DEV1:Ljava/lang/String; = "eth1"

.field private static final LOCAL_LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "EthernetService"

.field private static mCheckConnecting:I

.field private static mFoundEthernetDevice:Z

.field private static mHWconnected:Z

.field private static mStackconnected:Z


# instance fields
.field private DevName:[Ljava/lang/String;

.field private isEthEnabled:I

.field private mContext:Landroid/content/Context;

.field private mEthState:I

.field private mTracker:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput v0, Lcom/android/server/EthernetService;->mCheckConnecting:I

    .line 46
    sput-boolean v0, Lcom/android/server/EthernetService;->mStackconnected:Z

    .line 47
    sput-boolean v0, Lcom/android/server/EthernetService;->mHWconnected:Z

    .line 48
    sput-boolean v0, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 3
    .parameter "context"
    .parameter "Tracker"

    .prologue
    .line 52
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 53
    iput-object p2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    .line 54
    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    .line 58
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 61
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ethernet dev enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Trigger the ethernet monitor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-boolean v0, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateTracker;->StartPolling()V

    .line 67
    :cond_0
    return-void
.end method

.method private getPersistedState()I
    .locals 3

    .prologue
    .line 224
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "eth_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 229
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized persistEthEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 234
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "eth_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scanEthDevice()I
    .locals 7

    .prologue
    .line 158
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v1, 0x0

    .line 160
    .local v1, i:I
    const/4 v3, 0x0

    .line 162
    .local v3, k:I
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 168
    invoke-static {v2}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, ethDevName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 170
    const-string v4, "eth0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eth1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 166
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0           #ethDevName:Ljava/lang/String;
    :cond_2
    const-string v4, "EthernetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " net devices "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " k "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-boolean v4, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    if-eqz v4, :cond_3

    .line 183
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 189
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 192
    invoke-static {v2}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0       #ethDevName:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 194
    const-string v4, "eth0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "eth1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    :cond_4
    iget-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aput-object v0, v4, v3

    .line 196
    const-string v4, "EthernetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 189
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #ethDevName:Ljava/lang/String;
    :cond_6
    move v1, v3

    .line 211
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_7
    return v1
.end method


# virtual methods
.method public declared-synchronized UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v5, 0x2

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "eth_conf"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    const-string v3, "eth_ifname"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    const-string v3, "eth_ip"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    const-string v3, "eth_mode"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    const-string v3, "eth_dns"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    const-string v3, "eth_route"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    const-string v3, "eth_mask"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_0

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const-string v3, "eth_state"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v3, "previous_eth_state"

    iget-object v4, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetStateTracker;->getCheckConnecting()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 133
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->sendEmptyMessage(I)V

    .line 134
    const-string v3, "EthernetService"

    const-string v4, "Wrong ethernet configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 108
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/net/UnknownHostException;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getCheckConnecting()I
    .locals 3

    .prologue
    .line 292
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckConnecting:\tmCheckCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EthernetService;->mCheckConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget v0, Lcom/android/server/EthernetService;->mCheckConnecting:I

    return v0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthState()I
    .locals 1

    .prologue
    .line 286
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    return v0
.end method

.method public getHWConnected()Z
    .locals 3

    .prologue
    .line 317
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHWConnected:  mHWconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mHWconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-boolean v0, Lcom/android/server/EthernetService;->mHWconnected:Z

    return v0
.end method

.method public declared-synchronized getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .locals 3

    .prologue
    .line 81
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/ethernet/EthernetDevInfo;

    invoke-direct {v1}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 84
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    const-string v2, "eth_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 85
    const-string v2, "eth_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 86
    const-string v2, "eth_ip"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 87
    const-string v2, "eth_dns"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 88
    const-string v2, "eth_mask"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 89
    const-string v2, "eth_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getStackConnected()Z
    .locals 3

    .prologue
    .line 305
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStackConnected:\tmStackconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mStackconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-boolean v0, Lcom/android/server/EthernetService;->mStackconnected:Z

    return v0
.end method

.method public getTotalInterface()I
    .locals 1

    .prologue
    .line 143
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    return v0
.end method

.method public isEthConfigured()Z
    .locals 5

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v4, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "eth_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, x:I
    if-ne v1, v2, :cond_0

    .line 76
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public isEthDeviceFound()Z
    .locals 3

    .prologue
    .line 329
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFoundEthDevice: mFoundEthernetDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v0, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    return v0
.end method

.method public setCheckConnecting(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 298
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput p1, Lcom/android/server/EthernetService;->mCheckConnecting:I

    .line 299
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckConnecting:\tmCheckConnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EthernetService;->mCheckConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public declared-synchronized setEthMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 99
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "eth_ifname"

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const-string v1, "eth_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    const-string v1, "eth_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEthState(I)V
    .locals 8
    .parameter "state"

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 240
    monitor-enter p0

    :try_start_0
    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEthState from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/EthernetService;->mEthState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, skip_resetInterface:Z
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I

    if-eq v3, p1, :cond_3

    .line 245
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-eq p1, v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getCheckConnecting()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 247
    :cond_1
    const-string v3, "EthernetService"

    const-string v4, " already resetInterface "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x1

    .line 250
    :cond_2
    iput p1, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 251
    if-ne p1, v6, :cond_4

    .line 252
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :cond_4
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 264
    :cond_5
    if-eq v2, v6, :cond_3

    .line 268
    :try_start_2
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v3, "eth_state"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v3, "previous_eth_state"

    iget-object v4, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetStateTracker;->getCheckConnecting()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->sendEmptyMessage(I)V

    .line 279
    const-string v3, "EthernetService"

    const-string v4, "Wrong ethernet configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/net/UnknownHostException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #skip_resetInterface:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setHWConnected(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 323
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput-boolean p1, Lcom/android/server/EthernetService;->mHWconnected:Z

    .line 324
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHWConnected:  mHWconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mHWconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public setStackConnected(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 311
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput-boolean p1, Lcom/android/server/EthernetService;->mStackconnected:Z

    .line 312
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStackConnected:\tmStackconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mStackconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method
