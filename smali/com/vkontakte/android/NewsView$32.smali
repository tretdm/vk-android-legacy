.class Lcom/vkontakte/android/NewsView$32;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v0, p1, v1}, Lcom/vkontakte/android/NewsView;->access$21(Lcom/vkontakte/android/NewsView;Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V

    .line 1577
    return-void
.end method
