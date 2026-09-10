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
    .line 97
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 100
    const-string v5, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "aid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v5, :cond_0

    .line 103
    const-string v5, "photo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    .line 104
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$200(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 106
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v6, v5, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 107
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$300(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 110
    .end local v0    # "aid":I
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    :cond_0
    const-string v5, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .restart local v0    # "aid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v5, :cond_3

    .line 113
    const-string v5, "pid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 114
    .local v4, "pid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    .line 115
    .restart local v3    # "photo":Lcom/vkontakte/android/Photo;
    iget v5, v3, Lcom/vkontakte/android/Photo;->id:I

    if-ne v5, v4, :cond_1

    .line 116
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v6, v5, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 118
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$300(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 122
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$200(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 125
    .end local v0    # "aid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pid":I
    :cond_3
    const-string v5, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .restart local v0    # "aid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v5, :cond_4

    .line 128
    const-string v5, "photo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    .line 129
    .restart local v3    # "photo":Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->id:I

    iget v6, v3, Lcom/vkontakte/android/Photo;->id:I

    if-ne v5, v6, :cond_6

    .line 131
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget-object v6, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    iput-object v6, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget v6, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    iput v6, v5, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 133
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget-boolean v6, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    iput-boolean v6, v5, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 139
    .end local v0    # "aid":I
    .end local v1    # "i":I
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    :cond_4
    const-string v5, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 140
    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .restart local v0    # "aid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v5, :cond_5

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v5

    const-string v6, "new_cover_url"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 143
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$400(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 146
    .end local v0    # "aid":I
    :cond_5
    return-void

    .line 129
    .restart local v0    # "aid":I
    .restart local v1    # "i":I
    .restart local v3    # "photo":Lcom/vkontakte/android/Photo;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
