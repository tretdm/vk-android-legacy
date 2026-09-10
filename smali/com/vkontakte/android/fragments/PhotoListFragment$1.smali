.class Lcom/vkontakte/android/fragments/PhotoListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 98
    const-string v4, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "aid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "aid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v4, :cond_0

    .line 101
    const-string v4, "photo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    .line 102
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v5, v4, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 105
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 108
    .end local v0    # "aid":I
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    :cond_0
    const-string v4, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    const-string v4, "aid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .restart local v0    # "aid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v4, :cond_2

    .line 111
    const-string v4, "pid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "pid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 120
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 123
    .end local v0    # "aid":I
    .end local v3    # "pid":I
    :cond_2
    const-string v4, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    const-string v4, "aid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .restart local v0    # "aid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v4, :cond_3

    .line 126
    const-string v4, "photo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    .line 127
    .restart local v2    # "photo":Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 137
    .end local v0    # "aid":I
    .end local v1    # "i":I
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    :cond_3
    :goto_2
    const-string v4, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    const-string v4, "aid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .restart local v0    # "aid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v4, :cond_4

    .line 140
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    const-string v5, "new_cover_url"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 141
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$4(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 144
    .end local v0    # "aid":I
    :cond_4
    return-void

    .line 112
    .restart local v0    # "aid":I
    .restart local v3    # "pid":I
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    .line 113
    .restart local v2    # "photo":Lcom/vkontakte/android/Photo;
    iget v5, v2, Lcom/vkontakte/android/Photo;->id:I

    if-ne v5, v3, :cond_1

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v4

    iget v5, v4, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 116
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    goto/16 :goto_0

    .line 128
    .end local v3    # "pid":I
    .restart local v1    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->id:I

    iget v5, v2, Lcom/vkontakte/android/Photo;->id:I

    if-ne v4, v5, :cond_7

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v5, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    iput-object v5, v4, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget v5, v2, Lcom/vkontakte/android/Photo;->nLikes:I

    iput v5, v4, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-boolean v5, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    iput-boolean v5, v4, Lcom/vkontakte/android/Photo;->isLiked:Z

    goto/16 :goto_2

    .line 127
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
