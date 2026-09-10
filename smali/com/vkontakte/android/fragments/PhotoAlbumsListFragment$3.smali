.class Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;
.super Ljava/lang/Object;
.source "PhotoAlbumsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

.field private final synthetic val$a:Lcom/vkontakte/android/api/PhotoAlbum;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/view/View;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$view:Landroid/view/View;

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$view:Landroid/view/View;

    const v4, 0x7f0900b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "descr":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$view:Landroid/view/View;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 174
    .local v1, "privacy":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)I

    move-result v4

    invoke-static {v3, v4, v2, v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$4(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    iput-object v2, v3, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    iput-object v0, v3, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    iput v1, v3, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    .line 180
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$5(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V

    goto :goto_0
.end method
