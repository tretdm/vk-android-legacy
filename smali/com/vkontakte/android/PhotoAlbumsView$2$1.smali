.class Lcom/vkontakte/android/PhotoAlbumsView$2$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->val$pos:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    packed-switch p2, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$3(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$2;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$2;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$4(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
