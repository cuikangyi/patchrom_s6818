.class Lcom/android/internal/widget/SPenGestureView$11;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;

.field final synthetic val$isDownGesture:Z

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;ZI)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iput-boolean p2, p0, Lcom/android/internal/widget/SPenGestureView$11;->val$isDownGesture:Z

    iput p3, p0, Lcom/android/internal/widget/SPenGestureView$11;->val$key:I

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
    .locals 4
    .parameter "animation"

    .prologue
    const/high16 v3, 0x4248

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->val$isDownGesture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$8600(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->val$key:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$8600(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/SPenGestureView$11$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SPenGestureView$11$1;-><init>(Lcom/android/internal/widget/SPenGestureView$11;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8700(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8700(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$8600(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->val$key:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$8902(Lcom/android/internal/widget/SPenGestureView;Z)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/16 v1, 0x52

    #calls: Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$8800(Lcom/android/internal/widget/SPenGestureView;I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView;->access$8800(Lcom/android/internal/widget/SPenGestureView;I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$11;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$8400(Lcom/android/internal/widget/SPenGestureView;)Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/SPenGestureView$SPenVibrator;->playVibrator()V

    return-void
.end method
