.class Landroid/webkit/WebViewCore$6;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .locals 0
    .parameter "origin"
    .parameter "allow"

    .prologue
    .line 605
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .locals 3
    .parameter "eventName"
    .parameter "counter"

    .prologue
    .line 600
    new-instance v0, Landroid/webkit/WebViewCore$InvokeEventparams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$InvokeEventparams;-><init>()V

    .line 601
    .local v0, data:Landroid/webkit/WebViewCore$InvokeEventparams;
    iput-object p1, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    .line 602
    iput p2, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mPointer:I

    .line 603
    iget-object v1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 604
    return-void
.end method

.method public invokeNotificationID(II)V
    .locals 3
    .parameter "notificationID"
    .parameter "counter"

    .prologue
    .line 607
    new-instance v0, Landroid/webkit/WebViewCore$InvokeNotifyID;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$InvokeNotifyID;-><init>()V

    .line 608
    .local v0, data:Landroid/webkit/WebViewCore$InvokeNotifyID;
    iput p1, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mnotificationID:I

    .line 609
    iput p2, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mcounter:I

    .line 610
    iget-object v1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
