.class Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;
.super Ljava/lang/Object;
.source "FaveVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveVideoListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveVideoListFragment;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->access$002(Lcom/vkontakte/android/fragments/FaveVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->onError(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 2
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
    .line 30
    .local p2, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->access$002(Lcom/vkontakte/android/fragments/FaveVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
