.class public final Lcom/samsung/bluetoothle/BluetoothLENamespace;
.super Ljava/lang/Object;
.source "BluetoothLENamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bluetoothle/BluetoothLENamespace$Characteristics;,
        Lcom/samsung/bluetoothle/BluetoothLENamespace$Services;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUuid128StringFormat(I)Ljava/lang/String;
    .locals 2
    .parameter "uuid"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, s:Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toUuid16StringFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "uuid"

    .prologue
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
