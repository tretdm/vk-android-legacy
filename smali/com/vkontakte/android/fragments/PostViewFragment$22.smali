.class Lcom/vkontakte/android/fragments/PostViewFragment$22;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallEdit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$newComment:Ljava/lang/String;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 948
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$newComment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$27(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public success()V
    .locals 6

    .prologue
    const v5, 0x7f090152

    const/4 v1, 0x0

    .line 927
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080199

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 928
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$newComment:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 929
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    .line 930
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 931
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 933
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v2, v3, :cond_1

    .line 934
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 935
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 937
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "entry"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 939
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 940
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$newComment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ExTextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    return-void

    .line 940
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
