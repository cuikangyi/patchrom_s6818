.class synthetic Landroid/media/MediaPhone$2;
.super Ljava/lang/Object;
.source "MediaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$media$MediaPhone$CodecState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Landroid/media/MediaPhone$CodecState;->values()[Landroid/media/MediaPhone$CodecState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    :try_start_0
    sget-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_IDLE:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_OPEN:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_CLOSE:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
