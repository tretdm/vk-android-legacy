.class Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;
.super Ljava/lang/Object;
.source "PhotoAlbumsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->deleteAlbum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

.field private final synthetic val$aid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;->val$aid:I

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;->val$aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V

    .line 295
    return-void
.end method
