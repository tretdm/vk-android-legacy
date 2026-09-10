.class Lcom/vkontakte/android/MenuListView$MenuAdapter$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$MenuAdapter;->getView(IILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->access$1(Lcom/vkontakte/android/MenuListView$MenuAdapter;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/PostPhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->access$1(Lcom/vkontakte/android/MenuListView$MenuAdapter;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 451
    return-void
.end method
