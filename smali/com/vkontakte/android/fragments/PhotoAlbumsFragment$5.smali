.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->deleteAlbum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

.field final synthetic val$aid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;->val$aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$700(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V

    .line 284
    return-void
.end method
