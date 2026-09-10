.class Lcom/vkontakte/android/NewsItemView$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$2;->this$0:Lcom/vkontakte/android/NewsItemView;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$2;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$2;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/NewsItemView;->access$0(Lcom/vkontakte/android/NewsItemView;Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
