.class Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;
.super Landroid/database/ContentObserver;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainPreferenceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->access$300(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->access$100(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->access$200(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
