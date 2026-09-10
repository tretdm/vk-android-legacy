.class Lcom/vkontakte/android/PostViewActivity$32;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallEdit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->saveRepostComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PostViewActivity$32;->val$newComment:Ljava/lang/String;

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1486
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$32;->val$newComment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$40(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    .line 1487
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    const v4, 0x7f0600f7

    const/4 v1, 0x0

    .line 1472
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v3, 0x7f090204

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1473
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$32;->val$newComment:Ljava/lang/String;

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1474
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    .line 1475
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 1476
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "entry"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1478
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1479
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$32;->val$newComment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ExTextView;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$32;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    return-void

    .line 1479
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
