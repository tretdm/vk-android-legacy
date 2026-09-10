.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadUsers()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 644
    .local v0, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 647
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    return-void

    .line 644
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 645
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 647
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 648
    .local v1, "p":Lcom/vkontakte/android/Photo;
    iget-object v2, v1, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    if-nez v2, :cond_0

    .line 649
    iget v2, v1, Lcom/vkontakte/android/Photo;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iput-object v2, v1, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    goto :goto_1
.end method
