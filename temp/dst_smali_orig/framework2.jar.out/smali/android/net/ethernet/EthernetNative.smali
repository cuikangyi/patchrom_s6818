.class public Landroid/net/ethernet/EthernetNative;
.super Ljava/lang/Object;
.source "EthernetNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getInterfaceCnt()I
.end method

.method public static native getInterfaceName(I)Ljava/lang/String;
.end method

.method public static native initEthernetNative()I
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method