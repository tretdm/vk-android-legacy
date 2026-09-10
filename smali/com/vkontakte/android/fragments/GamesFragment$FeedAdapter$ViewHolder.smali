.class Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public photo:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;)V

    return-void
.end method
