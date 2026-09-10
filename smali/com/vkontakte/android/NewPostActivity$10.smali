.class Lcom/vkontakte/android/NewPostActivity$10;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 385
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 387
    .local v0, "signer":Lcom/vkontakte/android/UserProfile;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    new-instance v2, Lcom/vkontakte/android/NewPostActivity$10$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/NewPostActivity$10$1;-><init>(Lcom/vkontakte/android/NewPostActivity$10;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    .end local v0    # "signer":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method
