.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;I)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iput p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->val$pos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->val$pos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->deleteAlbum(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
