.class Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;
.super Ljava/lang/Object;
.source "CircleShortcutWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$300(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortcutItem hasWindowFocus()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->access$400(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    .end local p1
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->access$400(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$300(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .restart local p1
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dismissKeyguard remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
