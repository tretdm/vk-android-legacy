.class Lcom/vkontakte/android/MenuListView$9;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$9;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$9;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$10(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->notifyDataSetChanged()V

    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$9;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 452
    return-void
.end method
