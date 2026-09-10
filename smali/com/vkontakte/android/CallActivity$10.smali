.class Lcom/vkontakte/android/CallActivity$10;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->orientationChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;

.field private final synthetic val$newOrient:I

.field private final synthetic val$prevOrient:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    iput p2, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    iput p3, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x5a

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/16 v6, 0x10e

    .line 463
    iget v8, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    .line 464
    .local v8, "rotateTo":I
    iget v7, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    .line 465
    .local v7, "rotateFrom":I
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Rotate "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    if-ne v1, v6, :cond_0

    const/16 v8, -0x5a

    .line 467
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    if-ne v1, v6, :cond_1

    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    if-nez v1, :cond_1

    const/16 v7, -0x5a

    .line 468
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    if-ne v1, v6, :cond_2

    const/16 v8, 0x5a

    .line 469
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    if-ne v1, v9, :cond_3

    const/16 v8, -0x5a

    .line 470
    :cond_3
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    if-ne v1, v6, :cond_4

    const/16 v7, 0x5a

    .line 471
    :cond_4
    iget v1, p0, Lcom/vkontakte/android/CallActivity$10;->val$prevOrient:I

    if-ne v1, v9, :cond_5

    const/16 v7, -0x5a

    .line 472
    :cond_5
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    int-to-float v2, v8

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 473
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 474
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 475
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$28(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 476
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$29(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$30(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$31(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$10;->this$0:Lcom/vkontakte/android/CallActivity;

    iget v2, p0, Lcom/vkontakte/android/CallActivity$10;->val$newOrient:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/CallActivity;->access$32(Lcom/vkontakte/android/CallActivity;I)V

    .line 481
    return-void
.end method
