.class Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

.field private final synthetic val$photoIdx:I

.field private final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->val$photos:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->val$photoIdx:I

    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 1708
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1715
    .local v6, "attachContainer":Landroid/view/ViewGroup;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1716
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1717
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 1719
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1720
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "list"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1721
    const-string v0, "orientation"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->val$photoIdx:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    const-string v0, "position"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->val$photoIdx:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    const-string v0, "PhotoViewerFragment"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 1724
    return-void
.end method
