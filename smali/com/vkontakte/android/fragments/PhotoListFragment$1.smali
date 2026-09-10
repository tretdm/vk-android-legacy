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

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 90
    const-string v3, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "aid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_0

    .line 93
    const-string v3, "photo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 94
    .local v1, "photo":Lcom/vkontakte/android/Photo;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 98
    .end local v0    # "aid":I
    .end local v1    # "photo":Lcom/vkontakte/android/Photo;
    :cond_0
    const-string v3, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .restart local v0    # "aid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_2

    .line 101
    const-string v3, "pid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 102
    .local v2, "pid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 111
    .end local v0    # "aid":I
    .end local v2    # "pid":I
    :cond_2
    return-void

    .line 102
    .restart local v0    # "aid":I
    .restart local v2    # "pid":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 103
    .restart local v1    # "photo":Lcom/vkontakte/android/Photo;
    iget v4, v1, Lcom/vkontakte/android/Photo;->id:I

    if-ne v4, v2, :cond_1

    .line 104
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
