.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoSearch$Callback;


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
    .line 233
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$1102(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onError(ILjava/lang/String;)V

    .line 246
    return-void
.end method

.method public success(Ljava/util/Vector;I)V
    .locals 3
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$1102(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 237
    iget-object v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 238
    iget v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->val$offset:I

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 240
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0
.end method
