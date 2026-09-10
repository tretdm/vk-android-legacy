.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$1102(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onError(ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$1102(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 255
    iget-object v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p2, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 256
    iget v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->val$offset:I

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 258
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0
.end method
