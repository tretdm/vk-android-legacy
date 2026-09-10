.class Lcom/vkontakte/android/mediapicker/ui/FiltersListView$2;
.super Ljava/lang/Object;
.source "FiltersListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 231
    return-void
.end method
