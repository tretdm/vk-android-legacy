.class Lcom/vkontakte/android/NewsView$6;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 315
    instance-of v0, p1, Lcom/vkontakte/android/NewsItemView;

    if-eqz v0, :cond_0

    .line 316
    check-cast p1, Lcom/vkontakte/android/NewsItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkontakte/android/NewsItemView;->resetAttachments()V

    .line 318
    :cond_0
    return-void
.end method
