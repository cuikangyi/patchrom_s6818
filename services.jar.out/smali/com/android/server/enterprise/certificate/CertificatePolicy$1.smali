.class Lcom/android/server/enterprise/certificate/CertificatePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1224
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, pkgAction:Ljava/lang/String;
    const-string v4, "isMarketInstallation"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1229
    .local v1, isMarketApp:Z
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1232
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 1233
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
