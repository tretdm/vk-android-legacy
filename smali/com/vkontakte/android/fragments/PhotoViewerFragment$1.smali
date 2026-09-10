.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetFullPhotoList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
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
    .line 164
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->forceFinish()V

    .line 198
    return-void

    .line 196
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 167
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, "oldPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    .line 169
    .local v3, "op":Lcom/vkontakte/android/Photo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    .line 170
    .local v4, "p":Lcom/vkontakte/android/Photo;
    iget v6, v4, Lcom/vkontakte/android/Photo;->id:I

    iget v7, v3, Lcom/vkontakte/android/Photo;->id:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    iget v7, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    if-ne v6, v7, :cond_1

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "op":Lcom/vkontakte/android/Photo;
    .end local v4    # "p":Lcom/vkontakte/android/Photo;
    :cond_2
    invoke-virtual {p1, v9, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 177
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "position"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 185
    .local v5, "pos":I
    const/4 v6, 0x0

    sput-object v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 186
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$002(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 187
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onPositionChanged(I)V

    .line 188
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6, v8, v8}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoViewerFragment;ZZ)V

    .line 189
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$200(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 190
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6, v8}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$302(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)Z

    .line 191
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$400(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/PhotoView;->setEnabled(Z)V

    .line 192
    return-void
.end method
