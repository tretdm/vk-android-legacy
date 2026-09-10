.class Lcom/vkontakte/android/fragments/FaveFragment$1;
.super Ljava/lang/Object;
.source "FaveFragment.java"

# interfaces
.implements Lcom/vkontakte/android/VideoListView$VideoViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FaveFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openComments(Lcom/vkontakte/android/api/VideoFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "referer"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 63
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .line 64
    .local v3, "va":Lcom/vkontakte/android/VideoAttachment;
    iput-object p4, v3, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 65
    iget-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, p1, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 67
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 68
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 69
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 70
    const/4 v4, 0x2

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 71
    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 72
    iput-object p2, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 73
    iput-object p3, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 74
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->likes:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 75
    const/16 v4, 0x8

    iget-boolean v5, p1, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "entry"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "PostViewFragment"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v4, "args"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public showAddDialog()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
