.class Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SignupPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/SignupPhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountriesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 409
    move-object v0, p2

    .line 410
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 412
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_0
    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 390
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 395
    move-object v0, p2

    .line 396
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 399
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_0
    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    return-object v0
.end method
