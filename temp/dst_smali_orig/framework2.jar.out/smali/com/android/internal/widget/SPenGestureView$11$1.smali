.class Lcom/android/internal/widget/SPenGestureView$11$1;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView$11;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/SPenGestureView$11;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView$11;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->val$key:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$8902(Lcom/android/internal/widget/SPenGestureView;Z)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/16 v1, 0x52

    #calls: Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$8800(Lcom/android/internal/widget/SPenGestureView;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11$1;->this$1:Lcom/android/internal/widget/SPenGestureView$11;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView;->access$8800(Lcom/android/internal/widget/SPenGestureView;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method
