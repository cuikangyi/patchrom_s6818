.class Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$4;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->simInsertAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$4;->this$0:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$1102(Z)Z

    .line 1206
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1207
    return-void
.end method
