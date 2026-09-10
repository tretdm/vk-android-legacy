.class Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 5
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$30(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 329
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$31(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v0

    .line 330
    .local v0, "likes":I
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$32(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090142

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$31(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$32(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0201ac

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    return-void

    .line 331
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 332
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 333
    :cond_2
    const v2, 0x7f0201ab

    goto :goto_2
.end method

.method public success(III)V
    .locals 4
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$32(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$33(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$30(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$34(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090142

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$9$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$9;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$31(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void

    :cond_0
    move v0, v1

    .line 320
    goto :goto_0

    .line 323
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
