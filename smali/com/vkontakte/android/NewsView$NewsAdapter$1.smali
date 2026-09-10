.class Lcom/vkontakte/android/NewsView$NewsAdapter$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$NewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$NewsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$NewsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsAdapter;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 793
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$NewsAdapter;->access$0(Lcom/vkontakte/android/NewsView$NewsAdapter;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsItemView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 795
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$NewsAdapter;->access$0(Lcom/vkontakte/android/NewsView$NewsAdapter;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 796
    return-void
.end method
