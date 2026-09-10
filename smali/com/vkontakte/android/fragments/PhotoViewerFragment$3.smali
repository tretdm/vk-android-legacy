.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 246
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->albumID:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 269
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 248
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 249
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 250
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 251
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->userID:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 252
    iget-object v2, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->date:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 257
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->nLikes:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 258
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->nComments:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 259
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 263
    :cond_1
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 264
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/vkontakte/android/Photo;->canComment:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    const-string v2, "photo_viewer"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    const-string v2, "PostViewFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
