.class public Lcom/android/internal/telephony/cdma/sms/SCPTResult;
.super Ljava/lang/Object;
.source "SCPTResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;
    }
.end annotation


# static fields
.field public static final SMS_MAX_NUM_SERVICE_CATEGORIES:I = 0xa


# instance fields
.field public numberOfOccurance:I

.field public scptResultParam:[Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->scptResultParam:[Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->numberOfOccurance:I

    return-void
.end method
