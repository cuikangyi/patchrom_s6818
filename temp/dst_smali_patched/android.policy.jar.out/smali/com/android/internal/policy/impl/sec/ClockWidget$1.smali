.class Lcom/android/internal/policy/impl/sec/ClockWidget$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$000(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->access$100(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$200(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$400(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V

    return-void
.end method
