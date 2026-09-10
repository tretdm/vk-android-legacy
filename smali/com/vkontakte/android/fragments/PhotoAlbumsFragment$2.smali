.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "pos":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-gez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    .local v0, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v6, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 105
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 106
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 107
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2$1;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
