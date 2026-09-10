.class Lcom/vkontakte/android/PhotoAlbumsView$2;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0800e0

    const v8, 0x7f08007d

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, "pos":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-gez v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 93
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 94
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Lcom/vkontakte/android/PhotoAlbumsView$2$1;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/PhotoAlbumsView$2$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$2;I)V

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    .local v0, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 115
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 116
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    new-instance v2, Lcom/vkontakte/android/PhotoAlbumsView$2$2;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/PhotoAlbumsView$2$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$2;I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method
