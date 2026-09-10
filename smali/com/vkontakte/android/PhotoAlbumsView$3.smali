.class Lcom/vkontakte/android/PhotoAlbumsView$3;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->val$pos:I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    packed-switch p2, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
