.class Lcom/vkontakte/android/NewsView$8;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$5(Lcom/vkontakte/android/NewsView;)V

    .line 400
    return-void
.end method
