.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$3;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 190
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$3;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$300(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V

    .line 194
    return-void
.end method
