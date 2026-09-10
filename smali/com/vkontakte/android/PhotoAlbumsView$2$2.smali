.class Lcom/vkontakte/android/PhotoAlbumsView$2$2;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->val$pos:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$3(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$2;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$4(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
