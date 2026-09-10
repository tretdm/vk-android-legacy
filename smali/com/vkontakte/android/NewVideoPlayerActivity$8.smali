.class Lcom/vkontakte/android/NewVideoPlayerActivity$8;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 290
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 293
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 295
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 296
    const/4 v2, 0x2

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 297
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 298
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " photo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 301
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const-class v3, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "entry"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
