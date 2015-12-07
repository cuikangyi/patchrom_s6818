.class public Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyRequest"
.end annotation


# instance fields
.field public mFrequency:I

.field public mPkgName:Ljava/lang/String;

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field public mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"
    .parameter "pkgName"

    .prologue
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    :try_start_0
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$000()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "com.sec.android.app.twdvfs"

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/CustomFrequencyManager;->mTwDVFSAppToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/CustomFrequencyManager;->mTwDVFSAppToken:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/CustomFrequencyManager;->mTwDVFSAppToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    :cond_2
    iput-object p6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    :try_start_1
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/os/CustomFrequencyManager;->mTwDVFSAppToken:Landroid/os/IBinder;

    sget-object v1, Landroid/os/CustomFrequencyManager;->mTwDVFSAppToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 0

    .prologue
    return-void
.end method

.method public doFrequencyRequest()V
    .locals 0

    .prologue
    return-void
.end method
