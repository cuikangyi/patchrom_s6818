.class Lcom/android/internal/policy/impl/sec/SignatureLockScreen$ReorderLayout;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReorderLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, id:I
    move v1, p2

    .local v1, order:I
    const v2, 0x10203a8

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, p1, -0x2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const v2, 0x10203a7

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    goto :goto_0
.end method
