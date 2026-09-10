.class Lcom/vkontakte/android/NewsItemView$3;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsItemView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$3;->this$0:Lcom/vkontakte/android/NewsItemView;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$3;->this$0:Lcom/vkontakte/android/NewsItemView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView$3;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$3;->this$0:Lcom/vkontakte/android/NewsItemView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
