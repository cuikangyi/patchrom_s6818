.class Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartSleepNotificationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mFaceDetected:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4802(Lcom/android/server/PowerManagerService;Z)Z

    .line 2123
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->checkIntelligentSleep()Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mFaceDetected:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4802(Lcom/android/server/PowerManagerService;Z)Z

    .line 2125
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mFaceDetected:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartSleepIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2127
    const-string v0, "PowerManagerService"

    const-string v1, "SmartSleepNotificationTask::SmartSleepNotification : sendBroadcast done."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    return-void
.end method
