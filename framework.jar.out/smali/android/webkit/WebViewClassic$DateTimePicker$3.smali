.class Landroid/webkit/WebViewClassic$DateTimePicker$3;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0

    .prologue
    .line 6694
    iput-object p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker$3;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6696
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 6700
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$3;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3502(Landroid/webkit/WebViewClassic$DateTimePicker;Z)Z

    .line 6701
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$3;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #calls: Landroid/webkit/WebViewClassic$DateTimePicker;->clear()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$4000(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    .line 6703
    :cond_0
    return-void
.end method