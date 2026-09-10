.class Lcom/vkontakte/android/fragments/AudioListFragment$15;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGetAlbums$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->updateNavItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$15;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 519
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioPlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioPlaylist;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$15;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 509
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$15;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 510
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$15;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$28(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 514
    return-void

    .line 510
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlaylist;

    .line 511
    .local v0, "pl":Lcom/vkontakte/android/AudioPlaylist;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$15;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$28(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/AudioPlaylist;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
