.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final BATCH_DECRYPT:I = 0xc

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/data/system/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xb

.field public static final PERMISSION_RECEIVE_SDCARD_ENCRYPTION:Ljava/lang/String; = "android.permission.RECEIVE_SDCARD_ENCRYPTION"

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SDCARD_ENCRYPTION_COMPLETED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

.field public static final SDCARD_ENCRYPTION_REQUIRED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "android.app.action.START_SDCARD_ENCRYPTION"

.field public static final SD_CARD_ENCRYPTION_UNMOUNT:Ljava/lang/String; = "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BATCH_DONE:Ljava/lang/String; = "batch_done"

.field public static final STATUS_BATCH_FAIL:Ljava/lang/String; = "batch_fail"

.field public static final STATUS_BATCH_NOFS:Ljava/lang/String; = "batch_no_fs"

.field public static final STATUS_BATCH_START:Ljava/lang/String; = "batch_start"

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "checking"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    const v0, -0x35014542

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_1

    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    :cond_1
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "path"
    .parameter "password"

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 4

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentStatus()I
    .locals 4

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_0
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionSupported()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalSDRemovable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, result:Z
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    :goto_1
    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mountVolume()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4
    .parameter "password"

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 5
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    const/16 v1, 0xc8

    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    const-string v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->unmountSDCardByAdmin()V

    :cond_2
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unmountSDCardByAdmin()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1}, Landroid/os/storage/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
