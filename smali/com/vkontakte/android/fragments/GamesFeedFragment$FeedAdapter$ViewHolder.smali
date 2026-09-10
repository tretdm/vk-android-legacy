.class Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public photo:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFeedFragment$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;)V

    return-void
.end method
