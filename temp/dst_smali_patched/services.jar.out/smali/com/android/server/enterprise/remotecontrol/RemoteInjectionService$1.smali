.class Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;
.super Landroid/os/Handler;
.source "RemoteInjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "width"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, width:I
    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, height:I
    iget-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->setRemoteScreenDimensions(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
    .end packed-switch
.end method
