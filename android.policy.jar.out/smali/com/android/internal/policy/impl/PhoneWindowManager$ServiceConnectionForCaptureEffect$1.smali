.class Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 6292
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 6295
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6296
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;

    .line 6297
    .local v0, runnable:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;
    if-eqz v0, :cond_0

    .line 6298
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6299
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6300
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6302
    :cond_0
    monitor-exit v2

    .line 6303
    return-void

    .line 6302
    .end local v0           #runnable:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
