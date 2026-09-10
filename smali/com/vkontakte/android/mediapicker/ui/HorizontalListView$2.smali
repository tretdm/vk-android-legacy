.class Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V

    .line 195
    return-void
.end method
