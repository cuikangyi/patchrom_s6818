.class Lcom/android/internal/policy/impl/PenDetachmentAlert$5;
.super Landroid/content/BroadcastReceiver;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_alert"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, setSPenKeeper:I
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "penInsert"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, penInsert:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$602(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    const-string v3, "PenDetachmentAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$502(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->stopPedometer()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    .end local v1           #penInsert:Z
    :cond_2
    :goto_0
    const-string v3, "com.android.PenMissingAlertDialog.DISMISSED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PenDetachmentAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    :cond_3
    return-void

    :cond_4
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    const-string v3, "PenDetachmentAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$500(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->startPedometer()V

    goto/16 :goto_0

    :cond_6
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    const-string v3, "PenDetachmentAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->stopPedometer()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    goto/16 :goto_0
.end method
